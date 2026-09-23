<svg width="400" height="500" viewBox="0 0 400 500">
  <defs>
    <marker id="arrowX" markerWidth="10" markerHeight="10" refX="5" refY="5" orient="auto">
      <path d="M0,0 L10,5 L0,10 z" fill="black"/>
    </marker>
    <marker id="arrowStart" markerWidth="10" markerHeight="10" refX="5" refY="5" orient="auto">
      <path d="M10,0 L0,5 L10,10 z" fill="black"/>
    </marker>
    <clipPath id="topOnly">
      <rect x="0" y="0" width="400" height="329"/>
    </clipPath>
  </defs>
  <!-- <line x1="40" y1="60" x2="40" y2="450" stroke="black" stroke-width="2" marker-end="url(#arrowX)"/>
  <text x="15" y="455" font-size="16" fill="black">x</text>
  <line x1="40" y1="60" x2="200" y2="60" stroke="black" stroke-width="2" marker-end="url(#arrowX)"/>
  <text x="205" y="50" font-size="16" fill="black">y</text>
  <line x1="40" y1="60" x2="100" y2="100" stroke="black" stroke-width="2" marker-end="url(#arrowX)"/>
  <text x="115" y="100" font-size="16" fill="black">z</text> -->
  <g transform="translate(40, 30)">
    <line x1="200" y1="80" x2="200" y2="430" stroke="black" stroke-width="1" stroke-dasharray="8,4"/>
    <rect x="100" y="80" width="200" height="250" fill="none" stroke="black" stroke-width="2" clip-path="url(#topOnly)"/>
    <ellipse cx="200" cy="80" rx="100" ry="25" fill="none" stroke="black" stroke-width="2"/>
    <text x="245" y="325" font-size="14" fill="black" text-anchor="middle">R</text>
    <line x1="200" y1="330" x2="300" y2="330" stroke="black" stroke-width="1.5"/>
    <ellipse cx="200" cy="330" rx="100" ry="25" fill="none" stroke="black" stroke-width="2" stroke-dasharray="5,5"/>
    <path d="M100,330 A100,100 0 0 0 300,330" fill="none" stroke="black" stroke-width="2"/>
  </g>
  <line x1="360" y1="110" x2="360" y2="360" stroke="black" stroke-width="1" marker-start="url(#arrowStart)" marker-end="url(#arrowX)"/>
  <text x="370" y="240" font-size="16" fill="black">H</text>
</svg>