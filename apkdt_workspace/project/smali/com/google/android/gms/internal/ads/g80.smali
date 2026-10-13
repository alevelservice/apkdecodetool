.class public final Lcom/google/android/gms/internal/ads/g80;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/k80;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/g80;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/g80;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/g80;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/g80;->a:Lcom/google/android/gms/internal/ads/g80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/g80;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/g80;->a:Lcom/google/android/gms/internal/ads/g80;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/k80;

    sget-object v1, Lcom/google/android/gms/internal/ads/wu0;->zzglm:Lcom/google/android/gms/internal/ads/wu0;

    sget-object v2, Lcom/google/android/gms/internal/ads/wu0;->zzglp:Lcom/google/android/gms/internal/ads/wu0;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/k80;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/wu0;Lcom/google/android/gms/internal/ads/wu0;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/k80;

    return-object v0
.end method
