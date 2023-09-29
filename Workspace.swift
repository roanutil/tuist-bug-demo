import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: "TuistTest",
    projects: [ProjectDescription.Path.relativeToRoot("TuistTest")]
)
