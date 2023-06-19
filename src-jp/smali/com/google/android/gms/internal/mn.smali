.class public Lcom/google/android/gms/internal/mn;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lcom/google/android/gms/drive/metadata/a;

.field public static final B:Lcom/google/android/gms/drive/metadata/a;

.field public static final C:Lcom/google/android/gms/drive/metadata/a;

.field public static final a:Lcom/google/android/gms/drive/metadata/a;

.field public static final b:Lcom/google/android/gms/drive/metadata/a;

.field public static final c:Lcom/google/android/gms/internal/mp;

.field public static final d:Lcom/google/android/gms/drive/metadata/a;

.field public static final e:Lcom/google/android/gms/drive/metadata/a;

.field public static final f:Lcom/google/android/gms/drive/metadata/a;

.field public static final g:Lcom/google/android/gms/drive/metadata/a;

.field public static final h:Lcom/google/android/gms/drive/metadata/a;

.field public static final i:Lcom/google/android/gms/drive/metadata/a;

.field public static final j:Lcom/google/android/gms/drive/metadata/a;

.field public static final k:Lcom/google/android/gms/drive/metadata/a;

.field public static final l:Lcom/google/android/gms/drive/metadata/a;

.field public static final m:Lcom/google/android/gms/internal/mq;

.field public static final n:Lcom/google/android/gms/drive/metadata/a;

.field public static final o:Lcom/google/android/gms/drive/metadata/a;

.field public static final p:Lcom/google/android/gms/drive/metadata/a;

.field public static final q:Lcom/google/android/gms/drive/metadata/a;

.field public static final r:Lcom/google/android/gms/internal/mr;

.field public static final s:Lcom/google/android/gms/drive/metadata/a;

.field public static final t:Lcom/google/android/gms/drive/metadata/g;

.field public static final u:Lcom/google/android/gms/internal/ms;

.field public static final v:Lcom/google/android/gms/internal/mt;

.field public static final w:Lcom/google/android/gms/internal/mu;

.field public static final x:Lcom/google/android/gms/drive/metadata/a;

.field public static final y:Lcom/google/android/gms/internal/mv;

.field public static final z:Lcom/google/android/gms/internal/mw;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, 0x4c4b40

    const v6, 0x432380

    const v5, 0x3e8fa0

    const v4, 0x419ce0

    sget-object v0, Lcom/google/android/gms/internal/ne;->a:Lcom/google/android/gms/internal/ne;

    sput-object v0, Lcom/google/android/gms/internal/mn;->a:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/n;

    const-string v1, "alternateLink"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->b:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/internal/mp;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/mp;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->c:Lcom/google/android/gms/internal/mp;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/n;

    const-string v1, "description"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->d:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/n;

    const-string v1, "embedLink"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->e:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/n;

    const-string v1, "fileExtension"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->f:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/i;

    const-string v1, "fileSize"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->g:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "hasThumbnail"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->h:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/n;

    const-string v1, "indexableText"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->i:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "isAppData"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->j:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "isCopyable"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->k:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "isEditable"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->l:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/internal/mq;

    const-string v1, "isPinned"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/mq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->m:Lcom/google/android/gms/internal/mq;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "isRestricted"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->n:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "isShared"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->o:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "isTrashable"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->p:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "isViewed"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->q:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/internal/mr;

    const-string v1, "mimeType"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/mr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->r:Lcom/google/android/gms/internal/mr;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/n;

    const-string v1, "originalFilename"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->s:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/m;

    const-string v1, "ownerNames"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->t:Lcom/google/android/gms/drive/metadata/g;

    new-instance v0, Lcom/google/android/gms/internal/ms;

    const-string v1, "parents"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->u:Lcom/google/android/gms/internal/ms;

    new-instance v0, Lcom/google/android/gms/internal/mt;

    const-string v1, "quotaBytesUsed"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/mt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->v:Lcom/google/android/gms/internal/mt;

    new-instance v0, Lcom/google/android/gms/internal/mu;

    const-string v1, "starred"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/mu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->w:Lcom/google/android/gms/internal/mu;

    new-instance v0, Lcom/google/android/gms/internal/mo;

    const-string v1, "thumbnail"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/gms/internal/mo;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->x:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/internal/mv;

    const-string v1, "title"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/mv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->y:Lcom/google/android/gms/internal/mv;

    new-instance v0, Lcom/google/android/gms/internal/mw;

    const-string v1, "trashed"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/mw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->z:Lcom/google/android/gms/internal/mw;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/n;

    const-string v1, "webContentLink"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->A:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/n;

    const-string v1, "webViewLink"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/drive/metadata/internal/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->B:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/n;

    const-string v1, "uniqueIdentifier"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/drive/metadata/internal/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mn;->C:Lcom/google/android/gms/drive/metadata/a;

    return-void
.end method
