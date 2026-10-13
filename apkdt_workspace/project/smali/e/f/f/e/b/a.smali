.class public Le/f/f/e/b/a;
.super Le/f/f/d/c;
.source "ImageLoadingTimeControllerListener.java"


# instance fields
.field private b:J

.field private c:J

.field private d:Le/f/f/e/b/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/f/e/b/b;)V
    .locals 2
    .param p1    # Le/f/f/e/b/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Le/f/f/d/c;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Le/f/f/e/b/a;->b:J

    .line 3
    iput-wide v0, p0, Le/f/f/e/b/a;->c:J

    .line 4
    iput-object p1, p0, Le/f/f/e/b/a;->d:Le/f/f/e/b/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Le/f/f/e/b/a;->c:J

    .line 2
    iget-object p1, p0, Le/f/f/e/b/a;->d:Le/f/f/e/b/b;

    if-eqz p1, :cond_0

    .line 3
    iget-wide p2, p0, Le/f/f/e/b/a;->c:J

    iget-wide v0, p0, Le/f/f/e/b/a;->b:J

    sub-long/2addr p2, v0

    invoke-interface {p1, p2, p3}, Le/f/f/e/b/b;->a(J)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Le/f/f/e/b/a;->b:J

    return-void
.end method
