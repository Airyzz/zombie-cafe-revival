.class Lcom/capcom/zombiecafeandroidJP/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ac;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/ae;->a:Lcom/capcom/zombiecafeandroidJP/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "CLOSE BUTTON"

    const-string v1, "CloseImage onTouch!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-static {v2, v2, v3}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_HideWebViewInfobar(IIZ)V

    :cond_0
    return v3
.end method
