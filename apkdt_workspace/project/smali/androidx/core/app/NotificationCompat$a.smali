.class public Landroidx/core/app/NotificationCompat$a;
.super Landroidx/core/app/NotificationCompat$g;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$a;
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$a;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$a;->g:Z

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$a;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$g;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Landroidx/core/app/g;)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 5
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    .line 6
    invoke-interface {p1}, Landroidx/core/app/g;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/NotificationCompat$g;->b:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$a;->e:Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 9
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$a;->g:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 11
    :cond_0
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$g;->d:Z

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$g;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$a;
    .locals 0

    .line 3
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$a;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$a;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$g;->c:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$g;->d:Z

    return-object p0
.end method
