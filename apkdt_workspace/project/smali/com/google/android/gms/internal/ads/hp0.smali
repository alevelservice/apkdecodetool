.class final synthetic Lcom/google/android/gms/internal/ads/hp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pw0;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/pw0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/hp0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hp0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/hp0;->a:Lcom/google/android/gms/internal/ads/pw0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/fp0;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/fp0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
