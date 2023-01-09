/// Serialization for core dart types
library foundation;

Duration? durationFromSeconds(int? seconds) =>
    seconds == null ? null : Duration(seconds: seconds);

int? durationToSeconds(Duration? duration) => duration?.inSeconds;

/// Deserializes a millisecond integer into a [Duration].
Duration? durationFromMs(int? milliseconds) =>
    milliseconds == null ? null : Duration(milliseconds: milliseconds);

/// Serializes a [Duration] into a milliseconds [int].
int? durationToMs(Duration? duration) => duration?.inMilliseconds;

/// Deserializes a [UriData] from its [String] representation.
UriData? uriDataFromString(String? uriDataString) =>
    uriDataString == null ? null : UriData.parse(uriDataString);

/// Serializes a [UriData] into its [String] representation.
String? uriDataToString(UriData? uriData) => uriData?.toString();
