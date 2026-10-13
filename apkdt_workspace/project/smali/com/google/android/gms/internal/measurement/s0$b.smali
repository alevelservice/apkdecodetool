.class public final enum Lcom/google/android/gms/internal/measurement/s0$b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/f4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/s0$b;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/f4;"
    }
.end annotation


# static fields
.field private static final enum e:Lcom/google/android/gms/internal/measurement/s0$b;

.field private static final enum f:Lcom/google/android/gms/internal/measurement/s0$b;

.field private static final synthetic g:[Lcom/google/android/gms/internal/measurement/s0$b;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/s0$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RADS"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/s0$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/s0$b;->e:Lcom/google/android/gms/internal/measurement/s0$b;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/s0$b;

    const/4 v3, 0x2

    const-string v4, "PROVISIONING"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/s0$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/s0$b;->f:Lcom/google/android/gms/internal/measurement/s0$b;

    new-array v0, v3, [Lcom/google/android/gms/internal/measurement/s0$b;

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/measurement/s0$b;->e:Lcom/google/android/gms/internal/measurement/s0$b;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/s0$b;->f:Lcom/google/android/gms/internal/measurement/s0$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/measurement/s0$b;->g:[Lcom/google/android/gms/internal/measurement/s0$b;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/w0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/w0;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/internal/measurement/s0$b;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/s0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/s0$b;->g:[Lcom/google/android/gms/internal/measurement/s0$b;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/s0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/s0$b;

    return-object v0
.end method

.method public static zzad(I)Lcom/google/android/gms/internal/measurement/s0$b;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/s0$b;->f:Lcom/google/android/gms/internal/measurement/s0$b;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/s0$b;->e:Lcom/google/android/gms/internal/measurement/s0$b;

    return-object p0
.end method

.method public static zzlh()Lcom/google/android/gms/internal/measurement/h4;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/x0;->a:Lcom/google/android/gms/internal/measurement/h4;

    return-object v0
.end method


# virtual methods
.method public final zzlg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/s0$b;->value:I

    return v0
.end method
