.class final Lcom/google/android/gms/internal/gp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/ds;

.field final synthetic c:Lcom/google/android/gms/internal/gs;

.field final synthetic d:Lcom/google/android/gms/internal/im;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/im;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gp;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gp;->b:Lcom/google/android/gms/internal/ds;

    iput-object p3, p0, Lcom/google/android/gms/internal/gp;->c:Lcom/google/android/gms/internal/gs;

    iput-object p4, p0, Lcom/google/android/gms/internal/gp;->d:Lcom/google/android/gms/internal/im;

    iput-object p5, p0, Lcom/google/android/gms/internal/gp;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/al;

    invoke-direct {v1}, Lcom/google/android/gms/internal/al;-><init>()V

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/gp;->b:Lcom/google/android/gms/internal/ds;

    iget-object v5, v3, Lcom/google/android/gms/internal/ds;->k:Lcom/google/android/gms/internal/ev;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ii;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;ZZLcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/ev;)Lcom/google/android/gms/internal/ii;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ii;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->c:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/ii;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Lcom/google/android/gms/internal/ik;

    move-result-object v1

    const-string v2, "/invalidRequest"

    iget-object v3, p0, Lcom/google/android/gms/internal/gp;->c:Lcom/google/android/gms/internal/gs;

    iget-object v3, v3, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/internal/bb;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ik;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    const-string v2, "/loadAdURL"

    iget-object v3, p0, Lcom/google/android/gms/internal/gp;->c:Lcom/google/android/gms/internal/gs;

    iget-object v3, v3, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/bb;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ik;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    const-string v2, "/log"

    sget-object v3, Lcom/google/android/gms/internal/ar;->g:Lcom/google/android/gms/internal/bb;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ik;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gp;->d:Lcom/google/android/gms/internal/im;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/im;)V

    const-string v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ii;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
