import com.google.j2objc.annotations.Property;
/*-[
  #import "java/lang/NullPointerException.h"
]-*/

public class HelloWorldNative {
  @Property("nonatomic, copy")
  private String tableId;

  public static native void main(String[] args) /*-[
      NSLog(@"%s", "HelloWorldNative");
      @throw [[JavaLangNullPointerException alloc] init];
  ]-*/;
}
