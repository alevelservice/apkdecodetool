.class public Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;
.super Ljava/lang/Object;
.source "NativeJpegTranscoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/transcoder/c;


# annotations
.annotation build Lcom/facebook/common/internal/DoNotStrip;
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/d;->a()V

    return-void
.end method

.method public constructor <init>(ZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->a:Z

    .line 3
    iput p2, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->b:I

    .line 4
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->c:Z

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .locals 3
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/d;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    const/16 v2, 0x10

    if-gt p3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    if-ltz p4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 25
    :goto_2
    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    const/16 v2, 0x64

    if-gt p4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 26
    :goto_3
    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    .line 27
    invoke-static {p2}, Lcom/facebook/imagepipeline/transcoder/e;->d(I)Z

    move-result v2

    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    const/16 v2, 0x8

    if-ne p3, v2, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    const-string v1, "no transformation requested"

    .line 28
    invoke-static {v0, v1}, Lcom/facebook/common/internal/h;->a(ZLjava/lang/Object;)V

    .line 29
    invoke-static {p0}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    .line 30
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/io/OutputStream;

    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    return-void
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .locals 3
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/d;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    const/16 v2, 0x10

    if-gt p3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    if-ltz p4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_2
    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    const/16 v2, 0x64

    if-gt p4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 5
    :goto_3
    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    .line 6
    invoke-static {p2}, Lcom/facebook/imagepipeline/transcoder/e;->c(I)Z

    move-result v2

    invoke-static {v2}, Lcom/facebook/common/internal/h;->a(Z)V

    const/16 v2, 0x8

    if-ne p3, v2, :cond_4

    if-eq p2, v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    const-string v1, "no transformation requested"

    .line 7
    invoke-static {v0, v1}, Lcom/facebook/common/internal/h;->a(ZLjava/lang/Object;)V

    .line 8
    invoke-static {p0}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    .line 9
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/io/OutputStream;

    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->nativeTranscodeJpegWithExifOrientation(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    return-void
.end method

.method private static native nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private static native nativeTranscodeJpegWithExifOrientation(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method


# virtual methods
.method public a(Le/f/i/g/e;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Le/f/h/c;Ljava/lang/Integer;)Lcom/facebook/imagepipeline/transcoder/b;
    .locals 3
    .param p3    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Le/f/h/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p6, :cond_0

    const/16 p5, 0x55

    .line 4
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    :cond_0
    if-nez p3, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->e()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object p3

    .line 6
    :cond_1
    iget p5, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->b:I

    .line 7
    invoke-static {p3, p4, p1, p5}, Lcom/facebook/imagepipeline/transcoder/a;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Le/f/i/g/e;I)I

    move-result p5

    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->a:Z

    .line 9
    invoke-static {p3, p4, p1, v1}, Lcom/facebook/imagepipeline/transcoder/e;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Le/f/i/g/e;Z)I

    move-result p4

    .line 10
    invoke-static {p5}, Lcom/facebook/imagepipeline/transcoder/e;->a(I)I

    move-result v1

    .line 11
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->c:Z

    if-eqz v2, :cond_2

    move p4, v1

    .line 12
    :cond_2
    invoke-virtual {p1}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/facebook/imagepipeline/transcoder/e;->a:Lcom/facebook/common/internal/d;

    invoke-virtual {p1}, Le/f/i/g/e;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-static {p3, p1}, Lcom/facebook/imagepipeline/transcoder/e;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Le/f/i/g/e;)I

    move-result p1

    .line 15
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p2, p1, p4, p3}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->b(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {p3, p1}, Lcom/facebook/imagepipeline/transcoder/e;->b(Lcom/facebook/imagepipeline/common/RotationOptions;Le/f/i/g/e;)I

    move-result p1

    .line 17
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p2, p1, p4, p3}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->a(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    .line 19
    new-instance p1, Lcom/facebook/imagepipeline/transcoder/b;

    const/4 p2, 0x1

    if-ne p5, p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p1, p2}, Lcom/facebook/imagepipeline/transcoder/b;-><init>(I)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    invoke-static {v0}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    .line 21
    throw p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "NativeJpegTranscoder"

    return-object v0
.end method

.method public a(Le/f/h/c;)Z
    .locals 1

    .line 3
    sget-object v0, Le/f/h/b;->a:Le/f/h/c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Le/f/i/g/e;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;)Z
    .locals 1
    .param p2    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->e()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object p2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->a:Z

    invoke-static {p2, p3, p1, v0}, Lcom/facebook/imagepipeline/transcoder/e;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Le/f/i/g/e;Z)I

    move-result p1

    const/16 p2, 0x8

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
