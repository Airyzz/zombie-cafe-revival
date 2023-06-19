.class public Lcom/google/android/gms/internal/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/j;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ii;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ev;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/al;

    invoke-direct {v1}, Lcom/google/android/gms/internal/al;-><init>()V

    const/4 v4, 0x0

    move-object v0, p1

    move v3, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ii;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;ZZLcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/ev;)Lcom/google/android/gms/internal/ii;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/ii;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/ii;

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/k;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/m;-><init>(Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/k;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/im;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ii;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ik;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ii;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/ii;

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ik;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    return-void
.end method
