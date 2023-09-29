# Tuist Bug Demo

## The Problem

The project fails to fetch dependencies with `tuist fetch`. However, if `tuist generate` is run after the failed fetch it will generate successfully.

## Cause

The failure to fetch is caused by `swiftSettings: [.enableUpcomingFeature("StrictConcurrency")]` in the package manifest which is a dependency of the project. If the `swiftSettings` parameter is removed, the project fetches successfully every time.
