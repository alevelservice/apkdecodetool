.class public final Lcom/google/android/gms/internal/vision/zzp;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "FrameMetadataParcelCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/vision/zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field public f:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field public g:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field public h:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x5
    .end annotation
.end field

.field public i:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/j8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/j8;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIJI)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzp;->e:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzp;->f:I

    .line 5
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzp;->g:I

    .line 6
    iput-wide p4, p0, Lcom/google/android/gms/internal/vision/zzp;->h:J

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/vision/zzp;->i:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/vision/c;)Lcom/google/android/gms/internal/vision/zzp;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzp;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/vision/c;->c()Lcom/google/android/gms/vision/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/c$b;->e()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzp;->e:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/vision/c;->c()Lcom/google/android/gms/vision/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/c$b;->a()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzp;->f:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/vision/c;->c()Lcom/google/android/gms/vision/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/c$b;->c()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzp;->i:I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/vision/c;->c()Lcom/google/android/gms/vision/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/c$b;->b()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzp;->g:I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/vision/c;->c()Lcom/google/android/gms/vision/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/vision/c$b;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/vision/zzp;->h:J

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzp;->e:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzp;->f:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzp;->g:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/vision/zzp;->h:J

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzp;->i:I

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    return-void
.end method
