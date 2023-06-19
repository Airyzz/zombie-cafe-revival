.class public Lcom/google/android/gms/internal/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bb;


# instance fields
.field private final a:Lcom/google/android/gms/internal/be;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/be;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bd;->a:Lcom/google/android/gms/internal/be;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ii;Ljava/util/Map;)V
    .locals 2

    const-string v0, "1"

    const-string v1, "transparentBackground"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bd;->a:Lcom/google/android/gms/internal/be;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/be;->a(Z)V

    return-void
.end method
