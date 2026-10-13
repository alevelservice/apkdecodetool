.class public final Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;
.super Ljava/lang/Object;
.source "MapLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale$Languages;
    }
.end annotation


# static fields
.field public static final A:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final B:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final C:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final D:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field private static final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final c:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final d:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final e:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final f:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final g:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final h:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final i:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final j:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final k:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final l:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final m:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field static final n:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

.field public static final o:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final p:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final q:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final r:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final s:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final t:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final u:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final v:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final w:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final x:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final y:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field public static final z:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x4048b1be0157eed4L    # 49.388611

    const-wide v4, -0x3fa0d11262025397L    # -124.733253

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x40388b53a3ec02f3L    # 24.544245

    const-wide v4, -0x3faf42e4606748e4L    # -66.954811

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->b:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x404dae1ca3a4b557L    # 59.360249

    const-wide v4, -0x3fdec0bd66277c46L    # -8.623555

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x4048f3fe21d96e9cL    # 49.906193

    const-wide v4, 0x3ffc24dd2f1a9fbeL    # 1.759

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->c:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 7
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x4054c7147f130596L    # 83.110626

    const-wide v4, -0x3f9e600000000000L    # -141.0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x4044d686833c6003L    # 41.67598

    const-wide v4, -0x3fb5ae8e043a2164L    # -52.636291

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->d:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 10
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x404ac7ca42aed139L    # 53.56086

    const-wide v4, 0x405263b13dfb0d52L    # 73.557693

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x402f8d035371971cL    # 15.775416

    const-wide v4, 0x4060d8c3e1006078L    # 134.773911

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->e:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 13
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x403a63b29a1b9f99L    # 26.389444

    const-wide v4, 0x405d876058e1c697L    # 118.115255566105

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x4035bbbbb62413dbL    # 21.733333

    const-wide v4, 0x405e86e5d5b24e9cL    # 122.107778

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->f:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 16
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x404b871f1cfbb949L    # 55.055637

    const-wide v4, 0x4017766a11ec918eL    # 5.865639

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x4047a34ca0c282c7L    # 47.275776

    const-wide v4, 0x402e146c54bcf0b7L    # 15.039889

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->g:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 19
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x40434e64a16a4873L    # 38.612446

    const-wide v4, 0x405f78c660a20147L    # 125.887108

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x40409870e2c12ad8L    # 33.190945

    const-wide v4, 0x406032b59ff4fd6dL    # 129.584671

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->h:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 22
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x4046c2f640639d5eL    # 45.52314

    const-wide v4, 0x405ebc10e0221427L    # 122.93853

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x40383fdd65a14489L    # 24.249472

    const-wide v4, 0x40623a44bf4cb189L    # 145.820892

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->i:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 25
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x40498be100607810L    # 51.092804

    const-wide v4, -0x3feb6e5d5b24e9c4L    # -5.142222

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x4044af8fffbce421L    # 41.371582

    const-wide v4, 0x40231f84449dbec2L    # 9.561556

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->j:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 28
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x405476d77fae3609L    # 81.856903

    const-wide v4, -0x3f9ae0119ef954ebL    # -168.997849

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x404497cba3012168L    # 41.185902

    const-wide v4, 0x4033a38c64fdb09aL    # 19.638861

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->k:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 31
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, -0x3fcd9b377e1b8ed2L    # -18.3936845

    const-wide v4, 0x403b6efca5d86c3dL    # 27.4335426

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v6, 0x4045ff24be256a1dL    # 43.9933088

    const-wide v8, 0x40125e1804d98394L    # 4.5918885

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->l:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 34
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x404523e6659a6399L    # 42.280468655

    const-wide v4, -0x3fe67192fee12137L    # -6.3890876937

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->m:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 37
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, 0x4015231c35c0ac2dL    # 5.2842873

    const-wide v4, -0x3fbf10c7b3885829L    # -33.8689056

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const-wide v2, -0x3fc35daa8c30248bL    # -28.6341164

    const-wide v4, -0x3fad8115810624ddL    # -73.9830625

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->n:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    .line 40
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->j:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v2, "name_fr"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->o:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 41
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->g:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v3, "name_de"

    invoke-direct {v0, v3, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->p:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 42
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->i:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v3, "name_ja"

    invoke-direct {v0, v3, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->q:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 43
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->h:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v3, "name_ko"

    invoke-direct {v0, v3, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->r:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 44
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->e:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v3, "name_zh-Hans"

    invoke-direct {v0, v3, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->s:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 45
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->f:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v4, "name_zh-Hant"

    invoke-direct {v0, v4, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->t:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 46
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-direct {v0, v3}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->u:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 47
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-direct {v0, v4}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->v:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 48
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->c:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v3, "name_en"

    invoke-direct {v0, v3, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->w:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 49
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->b:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    invoke-direct {v0, v3, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->x:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 50
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->d:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    invoke-direct {v0, v3, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->y:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 51
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->d:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->z:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 52
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->k:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v2, "name_ru"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->A:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 53
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->l:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v2, "name_es"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->B:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 54
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->m:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    const-string v2, "name_pt"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->C:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 55
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    sget-object v1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->n:Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->D:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    .line 57
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->x:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->z:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->y:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->u:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->t:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->w:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->q:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->r:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->p:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->o:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    const-string v3, "RU"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->A:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    const-string v3, "ES"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->B:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v3, "PT"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->C:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v3, "BR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->D:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 72
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    const-string v2, "Hans"

    invoke-virtual {v0, v2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 73
    new-instance v3, Ljava/util/Locale$Builder;

    invoke-direct {v3}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v3

    const-string v4, "HK"

    invoke-virtual {v3, v4}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v3

    .line 74
    new-instance v5, Ljava/util/Locale$Builder;

    invoke-direct {v5}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v5

    const-string v6, "MO"

    invoke-virtual {v5, v6}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v5

    .line 75
    new-instance v7, Ljava/util/Locale$Builder;

    invoke-direct {v7}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v7

    const-string v8, "SG"

    invoke-virtual {v7, v8}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v2

    .line 76
    new-instance v7, Ljava/util/Locale$Builder;

    invoke-direct {v7}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v7

    const-string v8, "TW"

    invoke-virtual {v7, v8}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v7

    const-string v8, "Hant"

    invoke-virtual {v7, v8}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v7

    .line 77
    new-instance v9, Ljava/util/Locale$Builder;

    invoke-direct {v9}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v4

    .line 78
    new-instance v9, Ljava/util/Locale$Builder;

    invoke-direct {v9}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v1

    .line 79
    sget-object v6, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v8, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->u:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v6, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->u:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v3, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->u:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v3, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->u:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->t:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->v:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    sget-object v2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->v:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/Locale;)Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;
    .locals 3
    .param p0    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 6
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    sget-object p0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/util/Locale;Z)Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;
    .locals 1
    .param p0    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->E:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->a(Ljava/util/Locale;)Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->a:Ljava/lang/String;

    return-object v0
.end method
