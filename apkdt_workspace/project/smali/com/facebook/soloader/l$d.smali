.class public final Lcom/facebook/soloader/l$d;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "d"
.end annotation


# instance fields
.field public final e:Lcom/facebook/soloader/l$b;

.field public final f:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/l$b;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/soloader/l$d;->e:Lcom/facebook/soloader/l$b;

    .line 3
    iput-object p2, p0, Lcom/facebook/soloader/l$d;->f:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/l$d;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
