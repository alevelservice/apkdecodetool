.class final synthetic Lcom/google/android/gms/internal/ads/k9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n9;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/n9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/k9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/k9;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/k9;->a:Lcom/google/android/gms/internal/ads/n9;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbdl;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdl;->getAppInstanceId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
