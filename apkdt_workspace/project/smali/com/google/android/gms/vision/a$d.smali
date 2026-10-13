.class final Lcom/google/android/gms/vision/a$d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/images/a;

.field private b:Lcom/google/android/gms/common/images/a;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V
    .locals 2
    .param p2    # Landroid/hardware/Camera$Size;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/common/images/a;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/images/a;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/vision/a$d;->a:Lcom/google/android/gms/common/images/a;

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/common/images/a;

    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/common/images/a;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/vision/a$d;->b:Lcom/google/android/gms/common/images/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/images/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/a$d;->a:Lcom/google/android/gms/common/images/a;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/common/images/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/a$d;->b:Lcom/google/android/gms/common/images/a;

    return-object v0
.end method
