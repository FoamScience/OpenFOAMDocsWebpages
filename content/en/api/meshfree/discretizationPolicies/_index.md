---
layout: directory
title: discretizationPolicies
---

<canvas id="canvas" class="py-20" width="500" height="500"></canvas>

<script>
const canvas = document.getElementById('canvas');
const ctx = canvas.getContext('2d');
const triangle = [
    { x: 200, y: 0 },
    { x: 400, y: 300 },
    { x: 100, y: 400 }
];

function renderTriangle() {
    ctx.beginPath();
    ctx.moveTo(triangle[0].x, triangle[0].y);
    ctx.lineTo(triangle[1].x, triangle[1].y);
    ctx.lineTo(triangle[2].x, triangle[2].y);
    ctx.closePath();
    ctx.fillStyle = '#222';
    ctx.fill();
}

function generatePointsInsideTriangle() {
    const points = [];
    const minX = Math.min(triangle[0].x, triangle[1].x, triangle[2].x);
    const maxX = Math.max(triangle[0].x, triangle[1].x, triangle[2].x);
    const minY = Math.min(triangle[0].y, triangle[1].y, triangle[2].y);
    const maxY = Math.max(triangle[0].y, triangle[1].y, triangle[2].y);

    for (let i = 0; i < 100; i++) {
        const x = Math.random() * (maxX - minX) + minX;
        const y = Math.random() * (maxY - minY) + minY;
        if (isInsideTriangle(x, y)) {
            points.push({ x, y });
        }
    }

    return points;
}

function isInsideTriangle(x, y) {
    const [p0, p1, p2] = triangle;
    const dX = x - p2.x;
    const dY = y - p2.y;
    const dX21 = p2.x - p1.x;
    const dY12 = p1.y - p2.y;
    const D = dY12 * (p0.x - p2.x) + dX21 * (p0.y - p2.y);
    const s = dY12 * dX + dX21 * dY;
    const t = (p2.y - p0.y) * dX + (p0.x - p2.x) * dY;
    if (D < 0) {
        return s <= 0 && t <= 0 && s + t >= D;
    }
    return s >= 0 && t >= 0 && s + t <= D;
}

function renderPoints(points) {
    anime({
        targets: points,
        opacity: 1,
        easing: 'linear',
        duration: 3500,
        update: function () {
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            renderTriangle();
            points.forEach(point => {
                ctx.beginPath();
                ctx.arc(point.x, point.y, 2, 0, 2 * Math.PI);
                ctx.fillStyle = 'rgba(255,0,0,' + point.opacity + ')';
                ctx.fill();
                ctx.closePath();
            });
        },
    });
}

// Main animation flow
renderTriangle();
const points = generatePointsInsideTriangle();
points.forEach(point => {
    point.opacity = 0; // starts with opacity 0
});
renderPoints(points);
</script>
