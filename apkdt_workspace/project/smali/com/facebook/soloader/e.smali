.class public Lcom/facebook/soloader/e;
.super Lcom/facebook/soloader/l;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/e$b;,
        Lcom/facebook/soloader/e$c;
    }
.end annotation


# instance fields
.field protected final f:Ljava/io/File;

.field protected final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/facebook/soloader/e;->f:Ljava/io/File;

    .line 3
    iput-object p4, p0, Lcom/facebook/soloader/e;->g:Ljava/lang/String;

    return-void
.end method
