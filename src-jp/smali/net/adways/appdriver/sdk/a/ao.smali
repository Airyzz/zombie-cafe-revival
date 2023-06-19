.class public final Lnet/adways/appdriver/sdk/a/ao;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/ao;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/ab;
    .locals 3

    new-instance v1, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v1, p1}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    new-instance v2, Lnet/adways/appdriver/sdk/a/ab;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ao;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/ae;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lnet/adways/appdriver/sdk/a/ab;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v2
.end method
