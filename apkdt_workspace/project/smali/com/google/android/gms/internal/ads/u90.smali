.class final synthetic Lcom/google/android/gms/internal/ads/u90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/qy0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/u90;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/u90;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/u90;->a:Lcom/google/android/gms/internal/ads/qy0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
