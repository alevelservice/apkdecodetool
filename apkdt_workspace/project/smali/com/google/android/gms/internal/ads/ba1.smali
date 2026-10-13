.class final Lcom/google/android/gms/internal/ads/ba1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gb1;


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/la1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/la1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fa1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fa1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ba1;->b:Lcom/google/android/gms/internal/ads/la1;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ea1;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/la1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/b91;->a()Lcom/google/android/gms/internal/ads/b91;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/ba1;->a()Lcom/google/android/gms/internal/ads/la1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ea1;-><init>([Lcom/google/android/gms/internal/ads/la1;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ba1;-><init>(Lcom/google/android/gms/internal/ads/la1;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/la1;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/f91;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/la1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ba1;->a:Lcom/google/android/gms/internal/ads/la1;

    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/ads/la1;
    .locals 4

    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 39
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 40
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/la1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ba1;->b:Lcom/google/android/gms/internal/ads/la1;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/ma1;)Z
    .locals 1

    .line 38
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ma1;->a()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/ads/e91$d;->i:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/db1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/db1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/e91;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fb1;->a(Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ba1;->a:Lcom/google/android/gms/internal/ads/la1;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/la1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/ma1;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ma1;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/fb1;->c()Lcom/google/android/gms/internal/ads/vb1;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/u81;->b()Lcom/google/android/gms/internal/ads/s81;

    move-result-object v0

    .line 7
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ma1;->c()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v1

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ta1;->a(Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/ta1;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/fb1;->a()Lcom/google/android/gms/internal/ads/vb1;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/u81;->c()Lcom/google/android/gms/internal/ads/s81;

    move-result-object v0

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ma1;->c()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ta1;->a(Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/oa1;)Lcom/google/android/gms/internal/ads/ta1;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ba1;->a(Lcom/google/android/gms/internal/ads/ma1;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/xa1;->b()Lcom/google/android/gms/internal/ads/va1;

    move-result-object v4

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/y91;->b()Lcom/google/android/gms/internal/ads/y91;

    move-result-object v5

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/fb1;->c()Lcom/google/android/gms/internal/ads/vb1;

    move-result-object v6

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/u81;->b()Lcom/google/android/gms/internal/ads/s81;

    move-result-object v7

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/ja1;->b()Lcom/google/android/gms/internal/ads/ha1;

    move-result-object v8

    move-object v2, p1

    .line 20
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ma1;Lcom/google/android/gms/internal/ads/va1;Lcom/google/android/gms/internal/ads/y91;Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/ha1;)Lcom/google/android/gms/internal/ads/ra1;

    move-result-object p1

    return-object p1

    .line 21
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/xa1;->b()Lcom/google/android/gms/internal/ads/va1;

    move-result-object v4

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/y91;->b()Lcom/google/android/gms/internal/ads/y91;

    move-result-object v5

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/fb1;->c()Lcom/google/android/gms/internal/ads/vb1;

    move-result-object v6

    const/4 v7, 0x0

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/ja1;->b()Lcom/google/android/gms/internal/ads/ha1;

    move-result-object v8

    move-object v2, p1

    .line 25
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ma1;Lcom/google/android/gms/internal/ads/va1;Lcom/google/android/gms/internal/ads/y91;Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/ha1;)Lcom/google/android/gms/internal/ads/ra1;

    move-result-object p1

    return-object p1

    .line 26
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ba1;->a(Lcom/google/android/gms/internal/ads/ma1;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/xa1;->a()Lcom/google/android/gms/internal/ads/va1;

    move-result-object v4

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/y91;->a()Lcom/google/android/gms/internal/ads/y91;

    move-result-object v5

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/fb1;->a()Lcom/google/android/gms/internal/ads/vb1;

    move-result-object v6

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/u81;->c()Lcom/google/android/gms/internal/ads/s81;

    move-result-object v7

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/ja1;->a()Lcom/google/android/gms/internal/ads/ha1;

    move-result-object v8

    move-object v2, p1

    .line 32
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ma1;Lcom/google/android/gms/internal/ads/va1;Lcom/google/android/gms/internal/ads/y91;Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/ha1;)Lcom/google/android/gms/internal/ads/ra1;

    move-result-object p1

    return-object p1

    .line 33
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/xa1;->a()Lcom/google/android/gms/internal/ads/va1;

    move-result-object v4

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/y91;->a()Lcom/google/android/gms/internal/ads/y91;

    move-result-object v5

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/fb1;->b()Lcom/google/android/gms/internal/ads/vb1;

    move-result-object v6

    const/4 v7, 0x0

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/ja1;->a()Lcom/google/android/gms/internal/ads/ha1;

    move-result-object v8

    move-object v2, p1

    .line 37
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/ra1;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ma1;Lcom/google/android/gms/internal/ads/va1;Lcom/google/android/gms/internal/ads/y91;Lcom/google/android/gms/internal/ads/vb1;Lcom/google/android/gms/internal/ads/s81;Lcom/google/android/gms/internal/ads/ha1;)Lcom/google/android/gms/internal/ads/ra1;

    move-result-object p1

    return-object p1
.end method
