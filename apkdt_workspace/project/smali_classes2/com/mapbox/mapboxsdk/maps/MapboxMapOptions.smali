.class public Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
.super Ljava/lang/Object;
.source "MapboxMapOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:[Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Z

.field private M:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private N:F

.field private O:Z

.field private e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Z

.field private m:I

.field private n:[I

.field private o:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private p:Z

.field private q:I

.field private r:[I

.field private s:D

.field private t:D

.field private u:D

.field private v:D

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions$a;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions$a;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g:Z

    .line 4
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h:Z

    const v1, 0x800035

    .line 5
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i:I

    .line 6
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l:Z

    const v1, 0x800053

    .line 7
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m:I

    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o:I

    .line 9
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p:Z

    .line 10
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s:D

    const-wide v3, 0x4039800000000000L    # 25.5

    .line 12
    iput-wide v3, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t:D

    .line 13
    iput-wide v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u:D

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    .line 14
    iput-wide v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v:D

    .line 15
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w:Z

    .line 16
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x:Z

    .line 17
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y:Z

    .line 18
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z:Z

    .line 19
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A:Z

    .line 20
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B:Z

    .line 21
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C:Z

    .line 22
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D:Z

    const/4 v1, 0x4

    .line 23
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E:I

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F:Z

    .line 25
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G:Z

    .line 26
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->O:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g:Z

    .line 29
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h:Z

    const v1, 0x800035

    .line 30
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i:I

    .line 31
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l:Z

    const v1, 0x800053

    .line 32
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m:I

    const/4 v2, -0x1

    .line 33
    iput v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o:I

    .line 34
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p:Z

    .line 35
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q:I

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s:D

    const-wide v3, 0x4039800000000000L    # 25.5

    .line 37
    iput-wide v3, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t:D

    .line 38
    iput-wide v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u:D

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    .line 39
    iput-wide v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v:D

    .line 40
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w:Z

    .line 41
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x:Z

    .line 42
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y:Z

    .line 43
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z:Z

    .line 44
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A:Z

    .line 45
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B:Z

    .line 46
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C:Z

    .line 47
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D:Z

    const/4 v1, 0x4

    .line 48
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E:I

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F:Z

    .line 50
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G:Z

    .line 51
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->O:Z

    .line 52
    const-class v2, Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    iput-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->f:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j:[I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h:Z

    .line 58
    const-class v2, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 59
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k:Landroid/graphics/drawable/Drawable;

    .line 60
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n:[I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->r:[I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s:D

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t:D

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u:D

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v:D

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    :goto_9
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    :goto_a
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_b

    :cond_c
    const/4 v2, 0x0

    :goto_b
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->J:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_c

    :cond_d
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->K:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_d

    :cond_e
    const/4 v2, 0x0

    :goto_d
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->L:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_e

    :cond_f
    const/4 v2, 0x0

    :goto_e
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_f

    :cond_10
    const/4 v2, 0x0

    :goto_f
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_10

    :cond_11
    const/4 v2, 0x0

    :goto_10
    iput-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->H:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->I:[Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->N:F

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->M:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_11

    :cond_12
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->O:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    return-object v0
.end method

.method static a(Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 11
    .param p0    # Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5
    :try_start_0
    new-instance v1, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    invoke-direct {v1, p2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 6
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_apiBaseUrl:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 7
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_apiBaseUri:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 10
    :cond_0
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiZoomGestures:I

    const/4 v2, 0x1

    .line 11
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 12
    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 13
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiScrollGestures:I

    .line 14
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 15
    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 16
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiHorizontalScrollGestures:I

    .line 17
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->f(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 19
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiRotateGestures:I

    .line 20
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 21
    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 22
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiTiltGestures:I

    .line 23
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 24
    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 25
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiDoubleTapGestures:I

    .line 26
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 28
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiQuickZoomGestures:I

    .line 29
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 31
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cameraZoomMax:I

    const/high16 v3, 0x41cc0000    # 25.5f

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 32
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cameraZoomMin:I

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->d(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 33
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cameraPitchMax:I

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 34
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cameraPitchMin:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 35
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiCompass:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 36
    sget v1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiCompassGravity:I

    const v4, 0x800035

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    const/4 v1, 0x4

    new-array v4, v1, [I

    .line 37
    sget v5, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiCompassMarginLeft:I

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v6, v6, v0

    .line 38
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    const/4 v7, 0x0

    aput v5, v4, v7

    sget v5, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiCompassMarginTop:I

    .line 39
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    aput v5, v4, v2

    sget v5, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiCompassMarginRight:I

    .line 40
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    const/4 v8, 0x2

    aput v5, v4, v8

    sget v5, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiCompassMarginBottom:I

    .line 41
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    const/4 v9, 0x3

    aput v5, v4, v9

    .line 42
    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 43
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiCompassFadeFacingNorth:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 44
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiCompassDrawable:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/mapbox/mapboxsdk/j;->mapbox_compass_icon:I

    const/4 v10, 0x0

    invoke-static {v4, v5, v10}, Landroidx/core/content/res/e;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 46
    :cond_1
    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Landroid/graphics/drawable/Drawable;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 47
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiLogo:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 48
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiLogoGravity:I

    const v5, 0x800053

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    new-array v4, v1, [I

    .line 49
    sget v10, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiLogoMarginLeft:I

    .line 50
    invoke-virtual {p2, v10, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    float-to-int v10, v10

    aput v10, v4, v7

    sget v10, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiLogoMarginTop:I

    .line 51
    invoke-virtual {p2, v10, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    float-to-int v10, v10

    aput v10, v4, v2

    sget v10, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiLogoMarginRight:I

    .line 52
    invoke-virtual {p2, v10, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    float-to-int v10, v10

    aput v10, v4, v8

    sget v10, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiLogoMarginBottom:I

    .line 53
    invoke-virtual {p2, v10, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    float-to-int v10, v10

    aput v10, v4, v9

    .line 54
    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 55
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiAttributionTintColor:I

    const/4 v10, -0x1

    invoke-virtual {p2, v4, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->b(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 56
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiAttribution:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 57
    sget v4, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiAttributionGravity:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    new-array v4, v1, [I

    .line 58
    sget v5, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiAttributionMarginLeft:I

    const/high16 v10, 0x42b80000    # 92.0f

    mul-float v0, v0, v10

    .line 59
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    aput v0, v4, v7

    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiAttributionMarginTop:I

    .line 60
    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    aput v0, v4, v2

    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiAttributionMarginRight:I

    .line 61
    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    aput v0, v4, v8

    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_uiAttributionMarginBottom:I

    .line 62
    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    aput v0, v4, v9

    .line 63
    invoke-virtual {p0, v4}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 64
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_renderTextureMode:I

    .line 65
    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 67
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_renderTextureTranslucentSurface:I

    .line 68
    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 70
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_enableTilePrefetch:I

    .line 71
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 73
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_prefetchZoomDelta:I

    .line 74
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->f(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 76
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_enableZMediaOverlay:I

    .line 77
    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i(Z)V

    .line 79
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_localIdeographEnabled:I

    .line 80
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G:Z

    .line 81
    sget v0, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_localIdeographFontFamilies:I

    .line 82
    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    goto :goto_0

    .line 85
    :cond_2
    sget p1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_localIdeographFontFamily:I

    .line 86
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "sans-serif"

    .line 87
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 88
    :goto_0
    sget p1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_pixelRatio:I

    .line 89
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->a(F)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 91
    sget p1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_foregroundLoadColor:I

    const v0, -0xf161f

    .line 92
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->d(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 94
    sget p1, Lcom/mapbox/mapboxsdk/o;->mapbox_MapView_mapbox_cross_source_collisions:I

    .line 95
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->d(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    throw p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->K:Z

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z:Z

    return v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->L:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A:Z

    return v0
.end method

.method public a(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 101
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v:D

    return-object p0
.end method

.method public a(F)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 107
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->N:F

    return-object p0
.end method

.method public a(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 104
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q:I

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->J:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 103
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p:Z

    return-object p0
.end method

.method public a([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->r:[I

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->H:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->J:Ljava/lang/String;

    return-object v0
.end method

.method public b(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t:D

    return-object p0
.end method

.method public b(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->J:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g:Z

    return-object p0
.end method

.method public b([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j:[I

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q:I

    return v0
.end method

.method public c(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u:D

    return-object p0
.end method

.method public c(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 5
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->H:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h:Z

    return-object p0
.end method

.method public c([I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n:[I

    return-object p0
.end method

.method public d(D)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s:D

    return-object p0
.end method

.method public d(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->M:I

    return-object p0
.end method

.method public d(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->O:Z

    return-object p0
.end method

.method public d()[I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->r:[I

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 3
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o:I

    return v0
.end method

.method public e(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m:I

    return-object p0
.end method

.method public e(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B:Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 1
    const-class v1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_3

    .line 2
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;

    .line 3
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->f:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->f:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 6
    :cond_4
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    :goto_0
    return v0

    .line 8
    :cond_6
    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i:I

    iget v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i:I

    if-eq v1, v2, :cond_7

    return v0

    .line 9
    :cond_7
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l:Z

    if-eq v1, v2, :cond_8

    return v0

    .line 10
    :cond_8
    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m:I

    iget v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m:I

    if-eq v1, v2, :cond_9

    return v0

    .line 11
    :cond_9
    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o:I

    iget v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o:I

    if-eq v1, v2, :cond_a

    return v0

    .line 12
    :cond_a
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p:Z

    if-eq v1, v2, :cond_b

    return v0

    .line 13
    :cond_b
    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q:I

    iget v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q:I

    if-eq v1, v2, :cond_c

    return v0

    .line 14
    :cond_c
    iget-wide v1, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s:D

    iget-wide v3, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_d

    return v0

    .line 15
    :cond_d
    iget-wide v1, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t:D

    iget-wide v3, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_e

    return v0

    .line 16
    :cond_e
    iget-wide v1, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u:D

    iget-wide v3, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_f

    return v0

    .line 17
    :cond_f
    iget-wide v1, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v:D

    iget-wide v3, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_10

    return v0

    .line 18
    :cond_10
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w:Z

    if-eq v1, v2, :cond_11

    return v0

    .line 19
    :cond_11
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x:Z

    if-eq v1, v2, :cond_12

    return v0

    .line 20
    :cond_12
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y:Z

    if-eq v1, v2, :cond_13

    return v0

    .line 21
    :cond_13
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z:Z

    if-eq v1, v2, :cond_14

    return v0

    .line 22
    :cond_14
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A:Z

    if-eq v1, v2, :cond_15

    return v0

    .line 23
    :cond_15
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B:Z

    if-eq v1, v2, :cond_16

    return v0

    .line 24
    :cond_16
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C:Z

    if-eq v1, v2, :cond_17

    return v0

    .line 25
    :cond_17
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    if-eqz v1, :cond_18

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1

    :cond_18
    iget-object v1, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    if-eqz v1, :cond_19

    :goto_1
    return v0

    .line 26
    :cond_19
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j:[I

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 27
    :cond_1a
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n:[I

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    .line 28
    :cond_1b
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->r:[I

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->r:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    .line 29
    :cond_1c
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->J:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_2

    :cond_1d
    iget-object v1, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->J:Ljava/lang/String;

    if-eqz v1, :cond_1e

    :goto_2
    return v0

    .line 30
    :cond_1e
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D:Z

    if-eq v1, v2, :cond_1f

    return v0

    .line 31
    :cond_1f
    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E:I

    iget v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E:I

    if-eq v1, v2, :cond_20

    return v0

    .line 32
    :cond_20
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F:Z

    if-eq v1, v2, :cond_21

    return v0

    .line 33
    :cond_21
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G:Z

    iget-boolean v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G:Z

    if-eq v1, v2, :cond_22

    return v0

    .line 34
    :cond_22
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->H:Ljava/lang/String;

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v0

    .line 35
    :cond_23
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->I:[Ljava/lang/String;

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->I:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v0

    .line 36
    :cond_24
    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->N:F

    iget v2, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->N:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_25

    return v0

    .line 37
    :cond_25
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->O:Z

    iget-boolean p1, p1, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->O:Z

    if-eq v1, p1, :cond_26

    :cond_26
    :goto_3
    return v0
.end method

.method public f()Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    return-object v0
.end method

.method public f(I)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E:I

    return-object p0
.end method

.method public f(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y:Z

    return-object p0
.end method

.method public g(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l:Z

    return-object p0
.end method

.method public g()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g:Z

    return v0
.end method

.method public getPixelRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->N:F

    return v0
.end method

.method public h(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C:Z

    return-object p0
.end method

.method public h()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h:Z

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->f:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->r:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 15
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 16
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 17
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 18
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->J:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->K:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->L:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->H:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->I:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->N:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->O:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i:I

    return v0
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F:Z

    return-void
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public j(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w:Z

    return-object p0
.end method

.method public k(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x:Z

    return-object p0
.end method

.method public k()[I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j:[I

    return-object v0
.end method

.method public l(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D:Z

    return-object p0
.end method

.method public l()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->O:Z

    return v0
.end method

.method public m(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->K:Z

    return-object p0
.end method

.method public m()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->f:Z

    return v0
.end method

.method public n(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z:Z

    return-object p0
.end method

.method public n()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B:Z

    return v0
.end method

.method public o()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 2
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->M:I

    return v0
.end method

.method public o(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->L:Z

    return-object p0
.end method

.method public p(Z)Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A:Z

    return-object p0
.end method

.method public p()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->H:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l:Z

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m:I

    return v0
.end method

.method public t()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n:[I

    return-object v0
.end method

.method public u()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v:D

    return-wide v0
.end method

.method public v()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t:D

    return-wide v0
.end method

.method public w()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u:D

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->e:Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->f:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->g:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->j:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->h:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->l:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    iget p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->n:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 13
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->p:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    iget p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->r:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 16
    iget p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 18
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->t:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->u:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 20
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->v:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 21
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->w:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->x:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 23
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->y:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 24
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->z:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->A:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 26
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->B:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 27
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->C:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 28
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->J:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->K:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 30
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->L:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 31
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 32
    iget p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->F:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->G:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->H:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->I:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 37
    iget p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->N:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 38
    iget p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->M:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->O:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public x()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->s:D

    return-wide v0
.end method

.method public y()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->E:I

    return v0
.end method

.method public z()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/MapboxMapOptions;->D:Z

    return v0
.end method
