.class final Lcom/google/android/gms/vision/a$b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/vision/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/vision/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/vision/a$b;->a:Lcom/google/android/gms/vision/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/a;Lcom/google/android/gms/vision/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/a$b;-><init>(Lcom/google/android/gms/vision/a;)V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/a$b;->a:Lcom/google/android/gms/vision/a;

    invoke-static {v0}, Lcom/google/android/gms/vision/a;->b(Lcom/google/android/gms/vision/a;)Lcom/google/android/gms/vision/a$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/vision/a$c;->a([BLandroid/hardware/Camera;)V

    return-void
.end method
