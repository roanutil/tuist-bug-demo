# Tuist Bug Demo

## The Problem

The project fails to generate with `tuist clean && tuist fetch && tuist generate`. However, if `tuist generate` is run again without fetching, it will generate successfully.

## Cause

The initial failure to generate is caused by `swiftSettings: [.enableUpcomingFeature("StrictConcurrency")]` in the package manifest which is a dependency of the project. If that the `swiftSettings` parameter is removed, the project generates successfully every time.