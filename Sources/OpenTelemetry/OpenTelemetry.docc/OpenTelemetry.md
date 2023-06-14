# ``OpenTelemetry``

@Options {
    @TopicsVisualStyle(hidden)
}

An OpenTelemetry client for server-side Swift.

## Distributed Tracing

Distributed tracing support in `OpenTelemetry` is implemented
on top of [Swift Distributed Tracing](https://github.com/apple/swift-distributed-tracing).
This means any library implementing Swift Distributed Tracing will automatically export traces 
using OpenTelemetry.

@Image(source: "tracing-card", alt: "An illustration of a distributed trace.") {
    An illustration showing a single trace comprised of 5 spans.
}

### Span

@Links(visualStyle: list) {
    - ``OTelSpan``
    - ``OTelSpanContext``
    - ``OTelSpanID``
    - ``OTelFinishedSpan``
}

### Sampling

@Links(visualStyle: list) {
    - ``OTelSampler``
    - ``OTelConstantSampler``
}

### Export

@Links(visualStyle: list) {
    - ``OTelSpanExporter``
    - ``OTelNoOpSpanExporter``    
}

## Context Propagation

@Links(visualStyle: list) {
    - ``OTelSpanContext``
    - ``OTelTraceID``
    - ``OTelSpanID``
    - ``OTelIDGenerator``
    - ``OTelRandomIDGenerator``
    - ``OTelTraceFlags``
    - ``OTelTraceState``
}

## Configuration

@Links(visualStyle: list) {
    - ``OTelEnvironment``
    - ``OTelEnvironmentValueError``
}

## Topics

### Tracing

- ``OTelSpan``
- ``OTelFinishedSpan``
- ``OTelSpanExporter``
- ``OTelNoOpSpanExporter``
- ``OTelMultiplexSpanExporter``
- ``OTelSpanExporterAlreadyShutDownError``
- ``OTelSampler``
- ``OTelSamplingResult``
- ``OTelConstantSampler``

### Context

- ``OTelSpanContext``
- ``OTelTraceID``
- ``OTelSpanID``
- ``OTelIDGenerator``
- ``OTelRandomIDGenerator``
- ``OTelTraceFlags``
- ``OTelTraceState``

### Configuration

- ``OTelEnvironment``
- ``OTelEnvironmentValueError``

### Misc

- ``OTelLibrary``
- ``OTelSignal``