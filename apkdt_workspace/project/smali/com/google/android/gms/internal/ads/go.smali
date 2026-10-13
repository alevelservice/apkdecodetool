.class public final Lcom/google/android/gms/internal/ads/go;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/google/android/gms/internal/ads/fi;

.field private final c:Lcom/google/android/gms/internal/ads/ms0;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ms0;I)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/fi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/go;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/go;->b:Lcom/google/android/gms/internal/ads/fi;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/go;->c:Lcom/google/android/gms/internal/ads/ms0;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/go;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/fi;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/go;->b:Lcom/google/android/gms/internal/ads/fi;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/go;->a:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/ms0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/go;->c:Lcom/google/android/gms/internal/ads/ms0;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/go;->d:I

    return v0
.end method
