package kata
import (
  "crypto/md5"
  "encoding/hex"
)

func PassHash(str string) string {
  hash := md5.Sum([]byte(str))
  result := hex.EncodeToString(hash[:])

  return result

}
