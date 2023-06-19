.class public final Lcom/google/android/gms/internal/gd;
.super Lcom/google/android/gms/internal/gc;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gc;-><init>(Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gd;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public d()Lcom/google/android/gms/internal/gl;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ao;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gd;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/bi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/bi;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/hc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/hc;-><init>()V

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/go;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/go;

    move-result-object v0

    return-object v0
.end method
