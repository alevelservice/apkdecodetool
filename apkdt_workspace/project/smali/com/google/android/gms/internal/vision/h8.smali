.class public final Lcom/google/android/gms/internal/vision/h8;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/f8;


# static fields
.field private static final a:Lcom/google/android/gms/internal/vision/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/internal/vision/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/b0;

    const-string v1, "com.google.android.gms.vision.sdk"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/u;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/b0;-><init>(Landroid/net/Uri;)V

    const-string v1, "vision.sdk:"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/vision/b0;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "OptionalModule__enable_barcode_optional_module"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    const-string v2, "OptionalModule__enable_barcode_optional_module_v25"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/vision/h8;->a:Lcom/google/android/gms/internal/vision/x;

    const-string v2, "OptionalModule__enable_face_optional_module"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    const/4 v2, 0x1

    const-string v3, "OptionalModule__enable_face_optional_module_v25"

    .line 7
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    const-string v3, "OptionalModule__enable_ica_optional_module"

    .line 8
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    const-string v3, "OptionalModule__enable_ica_optional_module_v25"

    .line 9
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/vision/h8;->b:Lcom/google/android/gms/internal/vision/x;

    const-string v3, "OptionalModule__enable_ocr_optional_module"

    .line 10
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    const-string v3, "OptionalModule__enable_ocr_optional_module_v25"

    .line 11
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    const-string v1, "OptionalModule__enable_old_download_path"

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/b0;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/vision/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzjp()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/h8;->a:Lcom/google/android/gms/internal/vision/x;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/x;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzjq()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/h8;->b:Lcom/google/android/gms/internal/vision/x;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/x;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
