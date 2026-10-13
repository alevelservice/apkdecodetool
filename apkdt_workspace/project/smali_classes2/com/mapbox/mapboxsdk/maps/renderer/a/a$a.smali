.class Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;
.super Ljava/lang/Object;
.source "EGLConfigChooser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/maps/renderer/a/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

.field private final f:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private final j:Ljavax/microedition/khronos/egl/EGLConfig;


# direct methods
.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/renderer/a/a;Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;ZZILjavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->e:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    .line 3
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->f:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    .line 4
    iput-boolean p4, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->g:Z

    .line 5
    iput-boolean p5, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->h:Z

    .line 6
    iput p6, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->i:I

    .line 7
    iput-object p7, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;)I
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->e:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    iget v0, v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->value:I

    iget-object v1, p1, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->e:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    iget v1, v1, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->value:I

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/utils/c;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->f:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    iget v0, v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->value:I

    iget-object v1, p1, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->f:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    iget v1, v1, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->value:I

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/utils/c;->a(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->g:Z

    iget-boolean v1, p1, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->g:Z

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/utils/c;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->h:Z

    iget-boolean v1, p1, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->h:Z

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/utils/c;->a(ZZ)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 5
    :cond_3
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->i:I

    iget p1, p1, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->i:I

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/utils/c;->a(II)I

    move-result p1

    if-eqz p1, :cond_4

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;->a(Lcom/mapbox/mapboxsdk/maps/renderer/a/a$a;)I

    move-result p1

    return p1
.end method
