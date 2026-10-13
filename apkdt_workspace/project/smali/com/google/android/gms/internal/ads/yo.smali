.class public Lcom/google/android/gms/internal/ads/yo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pq;

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/gms/internal/ads/ms0;

.field private final d:Lcom/google/android/gms/internal/ads/fi;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/pq;Lcom/google/android/gms/internal/ads/ms0;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/fi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yo;->b:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yo;->d:Lcom/google/android/gms/internal/ads/fi;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/pq;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/ms0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/fi;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->d:Lcom/google/android/gms/internal/ads/fi;

    return-object v0
.end method

.method public a(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/pu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ox<",
            "Lcom/google/android/gms/internal/ads/qu;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/pu;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/pu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/pu;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->b:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/pq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Lcom/google/android/gms/internal/ads/pq;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/ms0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/ms0;

    return-object v0
.end method
