.class final Lcom/paypal/android/MEP/f;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/paypal/android/MEP/e;


# direct methods
.method public constructor <init>(Lcom/paypal/android/MEP/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/MEP/f;->a:Lcom/paypal/android/MEP/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/MEP/f;->a:Lcom/paypal/android/MEP/e;

    invoke-interface {v0}, Lcom/paypal/android/MEP/e;->a()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
