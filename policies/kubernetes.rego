package kubernetes.admission

deny[msg] {
    input.request.kind.kind == "Pod"
    container := input.request.object.spec.containers[_]
    not valid_image(container.image)
    msg = sprintf("Containers must use images from the specified Google Artifact Registry. Found: %v", [container.image])
}

valid_image(image) {
    startswith(image, "gcr.io/my-project/")
}
