.class final synthetic Lcom/google/android/gms/internal/ads/ik0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/qy0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ik0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ik0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ik0;->a:Lcom/google/android/gms/internal/ads/qy0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/lk0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/lk0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
