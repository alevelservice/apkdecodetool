.class final enum Lcom/google/android/gms/internal/clearcut/a1;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/clearcut/a1;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic e:[Lcom/google/android/gms/internal/clearcut/a1;

.field public static final enum zzjg:Lcom/google/android/gms/internal/clearcut/a1;

.field public static final enum zzjh:Lcom/google/android/gms/internal/clearcut/a1;

.field public static final enum zzji:Lcom/google/android/gms/internal/clearcut/a1;

.field public static final enum zzjj:Lcom/google/android/gms/internal/clearcut/a1;


# instance fields
.field private final zzjk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/clearcut/a1;

    const/4 v1, 0x0

    const-string v2, "SCALAR"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/clearcut/a1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/a1;->zzjg:Lcom/google/android/gms/internal/clearcut/a1;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/a1;

    const/4 v2, 0x1

    const-string v3, "VECTOR"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/clearcut/a1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/a1;->zzjh:Lcom/google/android/gms/internal/clearcut/a1;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/a1;

    const/4 v3, 0x2

    const-string v4, "PACKED_VECTOR"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/android/gms/internal/clearcut/a1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/a1;->zzji:Lcom/google/android/gms/internal/clearcut/a1;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/a1;

    const/4 v4, 0x3

    const-string v5, "MAP"

    invoke-direct {v0, v5, v4, v1}, Lcom/google/android/gms/internal/clearcut/a1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/a1;->zzjj:Lcom/google/android/gms/internal/clearcut/a1;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/clearcut/a1;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/a1;->zzjg:Lcom/google/android/gms/internal/clearcut/a1;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/clearcut/a1;->zzjh:Lcom/google/android/gms/internal/clearcut/a1;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/clearcut/a1;->zzji:Lcom/google/android/gms/internal/clearcut/a1;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/clearcut/a1;->zzjj:Lcom/google/android/gms/internal/clearcut/a1;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/clearcut/a1;->e:[Lcom/google/android/gms/internal/clearcut/a1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/clearcut/a1;->zzjk:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/clearcut/a1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/a1;->e:[Lcom/google/android/gms/internal/clearcut/a1;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/clearcut/a1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/clearcut/a1;

    return-object v0
.end method
