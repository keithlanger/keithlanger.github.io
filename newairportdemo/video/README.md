# Gate backdrop videos

The gate display looks for a video named after the destination's IATA code:

```
public/video/LHR.mp4     → London gates
public/video/NRT.mp4     → Tokyo gates
public/video/DXB.mp4     → Dubai gates
```

Drop an MP4 in here with that name and the gate display will use it as the
full-bleed backdrop for any flight to that destination. No imports, no config —
the file name is the wiring.

If no file exists, the `<video>` fails to load and the display falls back to the
generated `<CityScene>` for that destination, which is what ships by default.

Guidelines for a good gate backdrop:

- **Silent, looping, 10–30 seconds.** The element is muted and looped.
- **Slow motion in the frame.** Aerials, drifting skylines, water. Anything with
  hard cuts fights the overlaid text.
- **Keep the left third calm.** The gate number, city and flight details sit
  there over a scrim.
- **720p is plenty** for a wall display; keep files under ~10 MB so they start
  instantly.

To force the drawn scene even where a video exists, use the **Scene** toggle in
the top-right of the gate display.
