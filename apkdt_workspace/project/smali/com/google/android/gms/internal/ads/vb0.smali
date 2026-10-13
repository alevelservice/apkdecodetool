.class public final Lcom/google/android/gms/internal/ads/vb0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/z3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/z3<",
            "Lcom/google/android/gms/internal/ads/vb0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/yb0;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lcom/google/android/gms/internal/ads/l7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ub0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ub0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vb0;->d:Lcom/google/android/gms/internal/ads/z3;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/yb0;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/l7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb0;->a:Lcom/google/android/gms/internal/ads/yb0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vb0;->b:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vb0;->c:Lcom/google/android/gms/internal/ads/l7;

    return-void
.end method
