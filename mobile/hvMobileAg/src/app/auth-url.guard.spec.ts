import { TestBed } from '@angular/core/testing';

import { AuthUrlGuard } from './auth-url.guard';

describe('AuthUrlGuard', () => {
  let guard: AuthUrlGuard;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    guard = TestBed.inject(AuthUrlGuard);
  });

  it('should be created', () => {
    expect(guard).toBeTruthy();
  });
});
