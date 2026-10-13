.class public final enum Lcom/google/android/gms/internal/clearcut/z4;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/g1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/clearcut/z4;",
        ">;",
        "Lcom/google/android/gms/internal/clearcut/g1;"
    }
.end annotation


# static fields
.field private static final enum e:Lcom/google/android/gms/internal/clearcut/z4;

.field private static final enum f:Lcom/google/android/gms/internal/clearcut/z4;

.field private static final enum g:Lcom/google/android/gms/internal/clearcut/z4;

.field private static final enum h:Lcom/google/android/gms/internal/clearcut/z4;

.field private static final i:Lcom/google/android/gms/internal/clearcut/h1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/h1<",
            "Lcom/google/android/gms/internal/clearcut/z4;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lcom/google/android/gms/internal/clearcut/z4;

.field public static final enum zzbhk:Lcom/google/android/gms/internal/clearcut/z4;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/clearcut/z4;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/clearcut/z4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/z4;->zzbhk:Lcom/google/android/gms/internal/clearcut/z4;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/z4;

    const/4 v2, 0x1

    const-string v3, "UNMETERED_ONLY"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/clearcut/z4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/z4;->e:Lcom/google/android/gms/internal/clearcut/z4;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/z4;

    const/4 v3, 0x2

    const-string v4, "UNMETERED_OR_DAILY"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/clearcut/z4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/z4;->f:Lcom/google/android/gms/internal/clearcut/z4;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/z4;

    const/4 v4, 0x3

    const-string v5, "FAST_IF_RADIO_AWAKE"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/clearcut/z4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/z4;->g:Lcom/google/android/gms/internal/clearcut/z4;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/z4;

    const/4 v5, 0x4

    const-string v6, "NEVER"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/clearcut/z4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/z4;->h:Lcom/google/android/gms/internal/clearcut/z4;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/clearcut/z4;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/z4;->zzbhk:Lcom/google/android/gms/internal/clearcut/z4;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/clearcut/z4;->e:Lcom/google/android/gms/internal/clearcut/z4;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/clearcut/z4;->f:Lcom/google/android/gms/internal/clearcut/z4;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/clearcut/z4;->g:Lcom/google/android/gms/internal/clearcut/z4;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/clearcut/z4;->h:Lcom/google/android/gms/internal/clearcut/z4;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/clearcut/z4;->j:[Lcom/google/android/gms/internal/clearcut/z4;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/d5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/d5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/z4;->i:Lcom/google/android/gms/internal/clearcut/h1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/z4;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/clearcut/z4;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/z4;->j:[Lcom/google/android/gms/internal/clearcut/z4;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/clearcut/z4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/clearcut/z4;

    return-object v0
.end method

.method public static zzbc(I)Lcom/google/android/gms/internal/clearcut/z4;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/clearcut/z4;->h:Lcom/google/android/gms/internal/clearcut/z4;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/clearcut/z4;->g:Lcom/google/android/gms/internal/clearcut/z4;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/clearcut/z4;->f:Lcom/google/android/gms/internal/clearcut/z4;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/clearcut/z4;->e:Lcom/google/android/gms/internal/clearcut/z4;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/clearcut/z4;->zzbhk:Lcom/google/android/gms/internal/clearcut/z4;

    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/clearcut/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/clearcut/h1<",
            "Lcom/google/android/gms/internal/clearcut/z4;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/clearcut/z4;->i:Lcom/google/android/gms/internal/clearcut/h1;

    return-object v0
.end method


# virtual methods
.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/z4;->value:I

    return v0
.end method
