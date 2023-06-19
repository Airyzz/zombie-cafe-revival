.class Lcom/capcom/zombiecafeandroidJP/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ac;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/ad;->a:Lcom/capcom/zombiecafeandroidJP/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v2, 0x50

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "SCROLLVIEW"

    const-string v1, "Infobar onTouch!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    const/16 v1, 0x14

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ad;->a:Lcom/capcom/zombiecafeandroidJP/ac;

    invoke-static {v3}, Lcom/capcom/zombiecafeandroidJP/ac;->a(Lcom/capcom/zombiecafeandroidJP/ac;)Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    move-result-object v3

    iget-object v3, v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget-object v4, v3, Lcom/capcom/zombiecafeandroidJP/ax;->c:Ljava/lang/String;

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_ShowFixWebView(IIIILjava/lang/String;ZZ)V

    invoke-static {v5, v5, v6}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_HideInfobar(IIZ)V

    invoke-static {v5, v5, v6}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_HideWebViewInfobar(IIZ)V

    return v6
.end method
