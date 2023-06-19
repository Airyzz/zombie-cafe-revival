.class public final Lcom/google/android/gms/internal/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bb;


# instance fields
.field private final a:Lcom/google/android/gms/internal/aq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/aq;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ii;Ljava/util/Map;)V
    .locals 3

    const-string v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "App event with no name parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/aq;

    const-string v1, "info"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
