//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift OTel open source project
//
// Copyright (c) 2023 Moritz Lang and the Swift OTel project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

/// A span exporter receives batches of processed spans to export them, e.g. by sending them over the network.
///
/// ### Implementation Notes
///
/// Implementations **MUST** throw ``OTelSpanExporterAlreadyShutDownError`` if the exporter was previously shut down via ``shutdown()``.
public protocol OTelSpanExporter {
    /// Export the given batch of spans.
    ///
    /// - Parameter batch: A batch of spans to export.
    /// - Throws: ``OTelSpanExporterAlreadyShutDownError`` if the exporter was previously shut down,
    /// or an implementation-specific error if exporting failed.
    func export(_ batch: some Collection<OTelFinishedSpan>) async throws
    
    /// Shut down the span exporter.
    func shutdown() async
    
    /// Force the span exporter to export any previously received spans as soon as possible.
    func forceFlush() async throws
}

/// An error indicating that a given exporter has already been shut down while receiving an additional batch of spans to export.
public struct OTelSpanExporterAlreadyShutDownError: Error {
    /// Initialize the error.
    public init() {}
}
