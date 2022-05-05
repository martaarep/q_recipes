import 'package:hooks_riverpod/hooks_riverpod.dart';

class Observers extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "disposed"
}''');
    super.didDisposeProvider(provider, containers);
  }
}
