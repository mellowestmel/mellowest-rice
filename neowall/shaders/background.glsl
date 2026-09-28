float hash(vec2 p)
{
    p = fract(p * vec2(123.34, 456.21));
    p += dot(p, p + 45.32);
    return fract(p.x * p.y);
}

float noise(vec2 p)
{
    vec2 i = floor(p);
    vec2 f = fract(p);

    f = f * f * (3.0 - 2.0 * f);

    float a = hash(i);
    float b = hash(i + vec2(1.0, 0.0));
    float c = hash(i + vec2(0.0, 1.0));
    float d = hash(i + vec2(1.0, 1.0));

    return mix(
        mix(a, b, f.x),
        mix(c, d, f.x),
        f.y
    );
}

void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
    vec2 uv = (fragCoord - 0.5 * iResolution.xy) / iResolution.y;

    uv *= 3.0;

    uv = vec2(
        noise(uv + iTime * 0.1),
        noise(uv + 10.0)
    );

    float d = uv.x - uv.y;
    d *= 8.0;

    d = sin(d);
    d = d * 0.5 + 0.5;
    d = 1.0 - d;

    d = step(0.35, d);

    // RGB 228, 231, 140 — #E4E78C
    vec3 yellow = vec3(
        0.894117647,
        0.905882353,
        0.549019608
    );

    // RGB 6, 6, 6 — #060606
    vec3 dark = vec3(0.023529412);

    vec3 col = mix(yellow, dark, d);

    fragColor = vec4(col, 1.0);
}