//
//  Shaders.metal
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 4/5/25.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 recolor(float2 position, half4 color) {
    return half4(0, 1, 0, color.a);
}

[[ stitchable ]] half4 gradientColor(float2 position, half4 color) {
    return half4(position.x / position.y, 0, position.y / position.x, color.a);
}

[[ stitchable ]] half4 relativeRecolor(float2 position, half4 color, float2 size) {
    return half4(color.r, color.g, color.b, color.a * (position.y / size.y));
}

[[ stitchable ]] half4 rainbowRecolor(float2 position, half4 color, float2 size) {
    float2 newColor = position / size;
    return half4(newColor.x, newColor.y, 1 - newColor.x, color.a);
}
