.class public final Lcom/paypal/android/a/m;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/paypal/android/a/i;

.field private b:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/paypal/android/a/i;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/a/m;->a:Lcom/paypal/android/a/i;

    iput-object p2, p0, Lcom/paypal/android/a/m;->b:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/a/m;->a:Lcom/paypal/android/a/i;

    iget-object v1, p0, Lcom/paypal/android/a/m;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/i;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
