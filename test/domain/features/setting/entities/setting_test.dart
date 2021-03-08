import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Setting setting;
  group('Setting', () {
    test('isLocal - 127.0.0.1', () {
      setting = Setting(ip: '127.0.0.1');

      expect(true, setting.isLocal);
      expect(false, setting.isPrivate);
      expect(false, setting.isPublic);
      expect(false, setting.isForbidden);
    });
    test('isPrivate - 192.168.1.100', () {
      setting = Setting(ip: '192.168.1.100');

      expect(false, setting.isLocal);
      expect(true, setting.isPrivate);
      expect(false, setting.isPublic);
      expect(false, setting.isForbidden);
    });
    test('isPrivate - 172.22.242.163', () {
      setting = Setting(ip: '172.22.242.163');

      expect(false, setting.isLocal);
      expect(true, setting.isPrivate);
      expect(false, setting.isPublic);
      expect(false, setting.isForbidden);
    });
    test('isPrivate - 10.0.2.1', () {
      setting = Setting(ip: '10.0.2.1');

      expect(false, setting.isLocal);
      expect(true, setting.isPrivate);
      expect(false, setting.isPublic);
      expect(false, setting.isForbidden);
    });
    test('isPublic - 80.23.46.12', () {
      setting = Setting(ip: '80.23.46.12');

      expect(false, setting.isLocal);
      expect(false, setting.isPrivate);
      expect(true, setting.isPublic);
      expect(false, setting.isForbidden);
    });
    test('isForbidden - 226.0.0.0', () {
      setting = Setting(ip: '226.0.0.0');

      expect(false, setting.isLocal);
      expect(false, setting.isPrivate);
      expect(false, setting.isPublic);
      expect(true, setting.isForbidden);
    });
    test('isForbidden - 242.0.0.12', () {
      setting = Setting(ip: '242.0.0.12');

      expect(false, setting.isLocal);
      expect(false, setting.isPrivate);
      expect(false, setting.isPublic);
      expect(true, setting.isForbidden);
    });
    test('isForbidden - 0.0.0.0', () {
      setting = Setting(ip: '0.0.0.0');

      expect(false, setting.isLocal);
      expect(false, setting.isPrivate);
      expect(false, setting.isPublic);
      expect(true, setting.isForbidden);
    });
  });
}
