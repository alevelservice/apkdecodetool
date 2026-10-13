.class final synthetic Lcom/google/android/gms/internal/ads/rd0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/jd0;

.field private final f:Lcom/google/android/gms/internal/ads/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jd0;Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rd0;->e:Lcom/google/android/gms/internal/ads/jd0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rd0;->f:Lcom/google/android/gms/internal/ads/fi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd0;->e:Lcom/google/android/gms/internal/ads/jd0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd0;->f:Lcom/google/android/gms/internal/ads/fi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jd0;->a(Lcom/google/android/gms/internal/ads/fi;)V

    return-void
.end method
