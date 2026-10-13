.class final enum Lcom/google/android/gms/internal/ads/xy0;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic e:[Lcom/google/android/gms/internal/ads/xy0;

.field public static final enum zzgqu:Lcom/google/android/gms/internal/ads/xy0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/xy0;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/xy0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/xy0;->zzgqu:Lcom/google/android/gms/internal/ads/xy0;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/xy0;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/xy0;->zzgqu:Lcom/google/android/gms/internal/ads/xy0;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/xy0;->e:[Lcom/google/android/gms/internal/ads/xy0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/xy0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/xy0;->e:[Lcom/google/android/gms/internal/ads/xy0;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/xy0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/xy0;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
