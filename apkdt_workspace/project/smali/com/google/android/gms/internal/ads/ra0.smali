.class final synthetic Lcom/google/android/gms/internal/ads/ra0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/qy0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ra0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ra0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ra0;->a:Lcom/google/android/gms/internal/ads/qy0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/ib0;

    const-string v0, "Timed out waiting for ad response."

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ib0;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
