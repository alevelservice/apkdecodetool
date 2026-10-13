.class public Lio/flutter/embedding/engine/i/c$b;
.super Ljava/lang/Object;
.source "KeyEventChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/Character;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:J


# direct methods
.method public constructor <init>(IIIIILjava/lang/Character;IIIIJ)V
    .locals 0
    .param p6    # Ljava/lang/Character;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lio/flutter/embedding/engine/i/c$b;->a:I

    .line 13
    iput p2, p0, Lio/flutter/embedding/engine/i/c$b;->b:I

    .line 14
    iput p3, p0, Lio/flutter/embedding/engine/i/c$b;->c:I

    .line 15
    iput p4, p0, Lio/flutter/embedding/engine/i/c$b;->d:I

    .line 16
    iput p5, p0, Lio/flutter/embedding/engine/i/c$b;->e:I

    .line 17
    iput-object p6, p0, Lio/flutter/embedding/engine/i/c$b;->f:Ljava/lang/Character;

    .line 18
    iput p7, p0, Lio/flutter/embedding/engine/i/c$b;->g:I

    .line 19
    iput p8, p0, Lio/flutter/embedding/engine/i/c$b;->h:I

    .line 20
    iput p9, p0, Lio/flutter/embedding/engine/i/c$b;->i:I

    .line 21
    iput p10, p0, Lio/flutter/embedding/engine/i/c$b;->l:I

    .line 22
    iput-wide p11, p0, Lio/flutter/embedding/engine/i/c$b;->m:J

    .line 23
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 24
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x13

    if-lt p3, p4, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result p2

    iput p2, p0, Lio/flutter/embedding/engine/i/c$b;->j:I

    .line 26
    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result p1

    iput p1, p0, Lio/flutter/embedding/engine/i/c$b;->k:I

    goto :goto_0

    .line 27
    :cond_0
    iput p2, p0, Lio/flutter/embedding/engine/i/c$b;->j:I

    .line 28
    iput p2, p0, Lio/flutter/embedding/engine/i/c$b;->k:I

    goto :goto_0

    .line 29
    :cond_1
    iput p2, p0, Lio/flutter/embedding/engine/i/c$b;->j:I

    .line 30
    iput p2, p0, Lio/flutter/embedding/engine/i/c$b;->k:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;Ljava/lang/Character;J)V
    .locals 13
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Character;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/4 v0, 0x0

    move-object v3, p1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v4

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v7

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v9

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, p2

    move-wide/from16 v11, p3

    .line 10
    invoke-direct/range {v0 .. v12}, Lio/flutter/embedding/engine/i/c$b;-><init>(IIIIILjava/lang/Character;IIIIJ)V

    return-void
.end method
