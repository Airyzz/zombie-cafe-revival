.class Lcom/capcom/zombiecafeandroidJP/ac;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/capcom/zombiecafeandroidJP/ac;)Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput-object v2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ar:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->as:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->as:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput-object v2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->as:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput-object v2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput-object v2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    :cond_2
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$8(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    :cond_3
    return-void
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$13(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput-object v2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$12(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    sput-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$13(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$12(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$11(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$13(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$13(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$13(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$10(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput-object v2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput-object v2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->H:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput-object v2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->H:Landroid/widget/ImageView;

    :cond_2
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    sput-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$16(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    :cond_3
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$14(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "BAD MESSAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IS="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "BAD MESSAGE RECEIVED BY HANDLER"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/s;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroidJP/s;-><init>(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/t;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroidJP/t;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/t;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroidJP/t;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/u;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroidJP/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_6
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v1, v1

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v2, v2

    const v3, 0x3e6147ae

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v3, v3

    const v4, 0x3d4ccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v4, v4

    const v5, 0x3ea3d70a

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "INFOBAR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Infobar URL = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "url"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ap:Ljava/lang/String;

    new-instance v0, Lcom/capcom/zombiecafeandroidJP/p;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ap:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/capcom/zombiecafeandroidJP/p;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "INFOBAR"

    const-string v2, "About To Execute"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_1
    const-string v0, "INFOBAR"

    const-string v1, "Failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xa

    const/16 v1, 0x14

    const/16 v2, 0x50

    const/16 v3, 0x50

    sget-object v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->z:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_ShowFixWebView(IIIILjava/lang/String;ZZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_HideInfobar(IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_HideWebViewInfobar(IIZ)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/ax;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {v1, v3}, Lcom/capcom/zombiecafeandroidJP/ax;-><init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "enableflag"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->a:Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "text"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "tapURL"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "dispflag"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->d:Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "pause"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->e:Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "daycount"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->f:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "width"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->h:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "height"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->g:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->j:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "y"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->i:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "imageURL"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    const-string v1, "open"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->l:Ljava/lang/String;

    const-string v0, "tapURL"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->z:Ljava/lang/String;

    invoke-direct {p0}, Lcom/capcom/zombiecafeandroidJP/ac;->a()V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v1, Landroid/widget/FrameLayout;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$8(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v0, v0

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    const-string v2, "INFOBAR"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bgpadx = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":bgpady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":bgw = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":bgh = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v5, Landroid/widget/ImageView;

    sget-object v6, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v6}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ar:Landroid/widget/ImageView;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f020025

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    const-string v7, "INFOBAR"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "imgW imgH  = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v5, v5, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ar:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ar:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ar:Landroid/widget/ImageView;

    float-to-int v5, v3

    float-to-int v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v5, v3

    float-to-int v6, v0

    add-int/2addr v5, v6

    float-to-int v6, v4

    float-to-int v7, v1

    add-int/2addr v6, v7

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v5, "INFOBAR"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "param = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v5, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v5, v5, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ar:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x45200000    # 2560.0f

    float-to-int v0, v1

    int-to-float v6, v0

    const/high16 v0, 0x40800000    # 4.0f

    div-float v7, v1, v0

    float-to-int v8, v1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v1, Landroid/widget/HorizontalScrollView;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/ad;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroidJP/ad;-><init>(Lcom/capcom/zombiecafeandroidJP/ac;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/high16 v0, 0x43480000    # 200.0f

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v1, v1

    const/high16 v2, 0x44700000    # 960.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iput v10, v0, Lcom/capcom/zombiecafeandroidJP/ax;->m:I

    const-string v1, ""

    const/4 v0, 0x0

    move-object v2, v1

    :goto_1
    if-lt v0, v9, :cond_2

    const-string v1, ""

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v10, :cond_3

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ax;->b:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ax;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v1, Landroid/widget/TextView;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    sget v9, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v9, v9

    mul-float/2addr v2, v9

    const/high16 v9, 0x44200000    # 640.0f

    div-float/2addr v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "INFOBAR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "textSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : mScreenHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : STD_SCREEN_H = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x44200000    # 640.0f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : cal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v9, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v9, v9

    mul-float/2addr v2, v9

    const/high16 v9, 0x44200000    # 640.0f

    div-float/2addr v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    float-to-int v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    float-to-int v1, v3

    float-to-int v2, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v3

    float-to-int v2, v5

    add-int/2addr v1, v2

    float-to-int v2, v7

    float-to-int v5, v6

    add-int/2addr v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v1, Landroid/widget/ImageView;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->as:Landroid/widget/ImageView;

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->as:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->as:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->as:Landroid/widget/ImageView;

    float-to-int v1, v3

    float-to-int v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->as:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v3, v3

    add-int/2addr v3, v8

    float-to-int v4, v4

    add-int/2addr v4, v8

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget-boolean v0, v0, Lcom/capcom/zombiecafeandroidJP/ax;->d:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x44700000    # 960.0f

    const/high16 v1, 0x44200000    # 640.0f

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget v2, v2, Lcom/capcom/zombiecafeandroidJP/ax;->i:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v3, v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget v3, v3, Lcom/capcom/zombiecafeandroidJP/ax;->j:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget v4, v4, Lcom/capcom/zombiecafeandroidJP/ax;->g:I

    int-to-float v4, v4

    div-float v0, v4, v0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget v4, v4, Lcom/capcom/zombiecafeandroidJP/ax;->h:I

    int-to-float v4, v4

    div-float v1, v4, v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    float-to-int v2, v2

    float-to-int v3, v3

    float-to-int v0, v0

    float-to-int v1, v1

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ax;->k:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_ShowWebViewInfobar(IIIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    goto/16 :goto_1

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u3000"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :sswitch_c
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$9(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "force"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/capcom/zombiecafeandroidJP/ac;->a()V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/capcom/zombiecafeandroidJP/ac;->a()V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/capcom/zombiecafeandroidJP/ac;->b()V

    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    const-string v0, "w"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44700000    # 960.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const-string v1, "h"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x44200000    # 640.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    cmpg-float v3, v1, v0

    if-gtz v3, :cond_5

    div-float v3, v0, v1

    sget v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v0, v0

    const/high16 v4, 0x44200000    # 640.0f

    div-float/2addr v0, v4

    mul-float/2addr v0, v1

    mul-float v1, v3, v0

    :goto_3
    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v4, Landroid/widget/FrameLayout;

    sget-object v5, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v5}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$10(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v4, Landroid/widget/ImageView;

    sget-object v5, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v5}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    sget-object v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v3}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v4, Landroid/widget/FrameLayout;

    sget-object v5, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v5}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$11(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v4, v1

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$12(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget-object v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$12(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v3, v3

    const-string v4, "x"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v4, v4

    const-string v5, "y"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v3}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$13(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v4}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$12(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    sget v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v3, v3

    const-string v4, "x"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x23

    sget v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v3, v3

    const-string v4, "y"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x23

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$13(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/ae;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroidJP/ae;-><init>(Lcom/capcom/zombiecafeandroidJP/ac;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$13(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    const-string v1, "url"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "YASUMURA WV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "JAVA WebView URL = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$13(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->C:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    div-float v3, v1, v0

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v1, v1

    const/high16 v4, 0x44700000    # 960.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v0

    mul-float v0, v3, v1

    goto/16 :goto_3

    :sswitch_e
    const-string v0, "force"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/capcom/zombiecafeandroidJP/ac;->b()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->D:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v1, "ASYNCH MOUSE TASK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "x"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ASYNCH MOUSE TASK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    const-string v3, "y"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ge v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    const-string v3, "y"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-le v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const-string v3, "x"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ge v1, v3, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const-string v1, "x"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/capcom/zombiecafeandroidJP/ac;->b()V

    goto/16 :goto_0

    :sswitch_f
    invoke-direct {p0}, Lcom/capcom/zombiecafeandroidJP/ac;->c()V

    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v1, Landroid/widget/FrameLayout;

    sget-object v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v3}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$14(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->I:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "y"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->J:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "w"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->K:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "h"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->L:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "url"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "displayHomeButton"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->N:Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "afterOpenInfobar"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->O:Z

    const v0, 0x3e4ccccd

    const v1, 0x3e4ccccd

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v3, v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->I:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->J:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v5, v5, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->K:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sget v5, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v6, v6, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->L:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v1

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    sget v6, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v7, v7, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->K:I

    int-to-float v7, v7

    mul-float/2addr v0, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v0, v7

    mul-float/2addr v0, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    sget v6, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v7, v7, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->L:I

    int-to-float v7, v7

    mul-float/2addr v1, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v2, v0

    sub-float/2addr v3, v1

    sget v6, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v6, v6

    const v7, 0x3d99999a

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const-string v7, "YASUMURA WV"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bgpadx = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":bgpady = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":bgw = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":bgh = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":adjx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ":adjy = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":btnsizew = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v1, Landroid/widget/ImageView;

    sget-object v7, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v7}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->H:Landroid/widget/ImageView;

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    const-string v8, "YASUMURA WV"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "imgW imgH  = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->H:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->H:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->H:Landroid/widget/ImageView;

    float-to-int v1, v2

    float-to-int v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v2

    float-to-int v4, v4

    add-int/2addr v1, v4

    float-to-int v4, v3

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->H:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v4, Landroid/widget/ImageView;

    sget-object v5, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v5}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f020024

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    float-to-int v4, v2

    float-to-int v5, v3

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v5, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v7, v2

    add-int/2addr v7, v6

    float-to-int v8, v3

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    add-int/2addr v8, v6

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    new-instance v4, Lcom/capcom/zombiecafeandroidJP/af;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroidJP/af;-><init>(Lcom/capcom/zombiecafeandroidJP/ac;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-boolean v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->N:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v4, Landroid/widget/ImageView;

    sget-object v5, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v5}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f020026

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    float-to-int v4, v2

    add-int/2addr v4, v6

    float-to-int v5, v3

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v5, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v2

    add-int/2addr v2, v6

    add-int/2addr v2, v6

    float-to-int v3, v3

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v3, v7

    add-int/2addr v3, v6

    invoke-direct {v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    new-instance v2, Lcom/capcom/zombiecafeandroidJP/ag;

    invoke-direct {v2, p0}, Lcom/capcom/zombiecafeandroidJP/ag;-><init>(Lcom/capcom/zombiecafeandroidJP/ac;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$16(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v3, v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->K:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->L:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v2

    sget-object v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v3, v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->I:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v4, v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->J:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "YASUMURA WV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAVA WebView URL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->H:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_10
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string v0, "force"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/capcom/zombiecafeandroidJP/ac;->c()V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->NativeCloseEventForm()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->F:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v1, "ASYNCH MOUSE TASK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "x"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ASYNCH MOUSE TASK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    const-string v3, "y"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ge v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    const-string v3, "y"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-le v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const-string v3, "x"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ge v1, v3, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const-string v1, "x"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/capcom/zombiecafeandroidJP/ac;->c()V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->NativeCloseEventForm()V

    goto/16 :goto_0

    :sswitch_11
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "force"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_a
    :goto_4
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$16(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aa:Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$16(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/widget/FrameLayout;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->K:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v3, v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->L:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->I:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v3, v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->J:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$15(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$17(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v3, v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->G:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v3, "ASYNCH MOUSE TASK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RELOAD "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "x"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ASYNCH MOUSE TASK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RELOAD rect = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    const-string v4, "y"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ge v3, v4, :cond_a

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    const-string v4, "y"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-le v3, v4, :cond_a

    iget v3, v1, Landroid/graphics/Rect;->left:I

    const-string v4, "x"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ge v3, v4, :cond_a

    iget v1, v1, Landroid/graphics/Rect;->right:I

    const-string v3, "x"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_4

    :sswitch_12
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->asyncQueryInventory()Z

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->asyncConsume()Z

    goto/16 :goto_0

    :sswitch_14
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/ah;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroidJP/ah;-><init>(Lcom/capcom/zombiecafeandroidJP/ac;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_15
    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$7()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:///android_asset/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16
    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_17
    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "inside message"

    const-string v1, "loadimage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/n;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "friendindex"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/capcom/zombiecafeandroidJP/n;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_18
    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "mNickNameView"

    const-string v1, "START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$1()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "mNickNameView"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "ZombiCafeAndroidJP/1.1.8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const-string v0, "http://azcjp.jive.bij-cram01.com/index.php"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seq=ENTRY&appname=azcjp&im="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ud="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchURL"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "launchURLData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto/16 :goto_0

    :sswitch_19
    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$18()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "type"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "button1"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ShowAlertBox(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "type"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "button1"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "4"

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ShowAlertBox(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1c
    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->t:Lcom/capcom/zombiecafeandroidJP/URLManager;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/capcom/zombiecafeandroidJP/URLManager;->a(Ljava/lang/String;I[B)V

    goto/16 :goto_0

    :sswitch_1d
    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/r;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callback"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/capcom/zombiecafeandroidJP/r;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_1e
    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/r;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callback"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/capcom/zombiecafeandroidJP/r;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "type"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "button1"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "button2"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ShowAlertBox(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v1, "type"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "button1"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "button2"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ShowAlertBox(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_21
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->t:Lcom/capcom/zombiecafeandroidJP/URLManager;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->w:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/URLManager;->a(Landroid/content/Context;)Z

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->a:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->b:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    if-nez v1, :cond_c

    const-string v0, "ENTERFACEBOOK"

    const-string v1, "DENIED DUE TO MULTIPLE BUTTON HITS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    sput-boolean v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    :cond_d
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->V:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "option"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "NOT CONNECTED"

    const-string v1, "TO THE INTERNET/SERVER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/MouseTask;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "y"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroidJP/MouseTask;-><init>(FF)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/MouseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "androidsupport@capcomcanada.com"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "SmurfsVillage Android Support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AndroidId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nDESCRIBE YOUR ISSUE HERE:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const-string v2, "Send mail..."

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->forceGameExit(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "No Email"

    const-string v1, "Now What?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :sswitch_24
    const-string v0, "BuySmurfBerries"

    const-string v1, "Process Message from native"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ProgressBar(I)V

    goto/16 :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ac;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->showEnterMigrationPassword()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3039 -> :sswitch_0
        0x303a -> :sswitch_1
        0x303c -> :sswitch_2
        0x303d -> :sswitch_3
        0x303e -> :sswitch_4
        0x303f -> :sswitch_5
        0x3040 -> :sswitch_6
        0x3041 -> :sswitch_7
        0x3042 -> :sswitch_8
        0x3043 -> :sswitch_15
        0x3044 -> :sswitch_16
        0x3045 -> :sswitch_1c
        0x3046 -> :sswitch_20
        0x3047 -> :sswitch_1f
        0x3048 -> :sswitch_1e
        0x3049 -> :sswitch_21
        0x304a -> :sswitch_1d
        0x304b -> :sswitch_0
        0x304c -> :sswitch_22
        0x304d -> :sswitch_0
        0x304e -> :sswitch_0
        0x304f -> :sswitch_0
        0x3050 -> :sswitch_0
        0x3051 -> :sswitch_0
        0x3052 -> :sswitch_0
        0x3053 -> :sswitch_23
        0x3054 -> :sswitch_0
        0x3055 -> :sswitch_24
        0x3056 -> :sswitch_25
        0x32ca -> :sswitch_17
        0x32cb -> :sswitch_18
        0x32cd -> :sswitch_19
        0x32ce -> :sswitch_1a
        0x32cf -> :sswitch_1b
        0x32d0 -> :sswitch_0
        0x32d1 -> :sswitch_0
        0x32fa -> :sswitch_9
        0x32fb -> :sswitch_b
        0x32fc -> :sswitch_c
        0x32fd -> :sswitch_a
        0x332c -> :sswitch_d
        0x332d -> :sswitch_e
        0x3336 -> :sswitch_f
        0x3337 -> :sswitch_10
        0x3338 -> :sswitch_11
        0x33f4 -> :sswitch_12
        0x33f5 -> :sswitch_14
        0x33f6 -> :sswitch_13
        0x3458 -> :sswitch_26
        0xd903 -> :sswitch_0
    .end sparse-switch
.end method
