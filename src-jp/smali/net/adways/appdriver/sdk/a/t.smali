.class public abstract Lnet/adways/appdriver/sdk/a/t;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/SortedMap;

.field protected final b:Ljava/lang/String;

.field protected c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lnet/adways/appdriver/sdk/a/t;->c:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/t;->a:Ljava/util/SortedMap;

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lorg/apache/http/HttpResponse;)Lnet/adways/appdriver/sdk/a/ai;
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/t;->a:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract b(Landroid/content/Context;)Z
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lnet/adways/appdriver/sdk/a/t;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/adways/appdriver/sdk/a/t;->c:I

    return v0
.end method

.method protected abstract d(Landroid/content/Context;)Ljava/lang/String;
.end method
