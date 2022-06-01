# has-unicode

## one line check whether a string contains unicode characters

<br/>

---

```typescript
const hasUnicode = require('@sygn/has-unicode');

console.log(hasUnicode('😀?'));
// true

// you can add a handler for handling type errors
hasUnicode.onError(console.error);
```